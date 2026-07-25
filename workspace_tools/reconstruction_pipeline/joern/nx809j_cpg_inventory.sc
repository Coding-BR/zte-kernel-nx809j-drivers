import io.shiftleft.semanticcpg.language.*
import java.nio.charset.StandardCharsets
import java.nio.file.{Files, Path, Paths}

def jsonString(value: String): String = {
  val escaped = value.flatMap {
    case '"'  => "\\\""
    case '\\' => "\\\\"
    case '\b' => "\\b"
    case '\f' => "\\f"
    case '\n' => "\\n"
    case '\r' => "\\r"
    case '\t' => "\\t"
    case character if character < ' ' => f"\\u${character.toInt}%04x"
    case character => character.toString
  }
  s"\"$escaped\""
}

def writeJson(outputDir: Path, name: String, records: Seq[String]): Unit = {
  val body = records.mkString(",\n")
  val payload = s"""{
  "schema_version": "1.0",
  "records": [
$body
  ]
}
"""
  Files.writeString(outputDir.resolve(name), payload, StandardCharsets.UTF_8)
}

@main def exec(cpgFile: String, outputDir: String) = {
  importCpg(cpgFile)
  val output = Paths.get(outputDir).toAbsolutePath.normalize
  Files.createDirectories(output)

  val methods = cpg.method.l.sortBy(method => (method.filename, method.name, method.fullName))
  val methodRows = methods.map { method =>
    s"""    {"name":${jsonString(method.name)},"full_name":${jsonString(method.fullName)},"signature":${jsonString(method.signature)},"filename":${jsonString(method.filename)},"is_external":${method.isExternal},"line":${method.lineNumber.getOrElse(-1)}}"""
  }
  writeJson(output, "methods.json", methodRows)

  val calls = cpg.call.l.map { call =>
    (call, call.method.filename)
  }.sortBy { case (call, filename) =>
    (filename, call.lineNumber.getOrElse(-1), call.name, call.code)
  }
  val callRows = calls.map { case (call, filename) =>
    val caller = call.method.name
    s"""    {"caller":${jsonString(caller)},"name":${jsonString(call.name)},"method_full_name":${jsonString(call.methodFullName)},"code":${jsonString(call.code)},"filename":${jsonString(filename)},"line":${call.lineNumber.getOrElse(-1)}}"""
  }
  writeJson(output, "calls.json", callRows)

  val controls = cpg.controlStructure.l.map { control =>
    (control, control.method.filename)
  }.sortBy { case (control, filename) =>
    (filename, control.lineNumber.getOrElse(-1), control.controlStructureType, control.code)
  }
  val controlRows = controls.map { case (control, filename) =>
    val owner = control.method.name
    s"""    {"method":${jsonString(owner)},"type":${jsonString(control.controlStructureType)},"code":${jsonString(control.code)},"filename":${jsonString(filename)},"line":${control.lineNumber.getOrElse(-1)}}"""
  }
  writeJson(output, "control_structures.json", controlRows)

  val metadata = s"""{
  "schema_version": "1.0",
  "cpg_file": ${jsonString(Paths.get(cpgFile).toAbsolutePath.normalize.toString)},
  "method_count": ${methods.size},
  "call_count": ${calls.size},
  "control_structure_count": ${controls.size}
}
"""
  Files.writeString(output.resolve("inventory.json"), metadata, StandardCharsets.UTF_8)
}
