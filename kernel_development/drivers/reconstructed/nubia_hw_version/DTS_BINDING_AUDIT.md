# Auditoria do binding DTS

O binding usado por `nubia_hw_ver_probe` foi localizado no DTS live da ROM:

```dts
nubia_hw_gpio_ctrl {
    compatible = "nubia_hw_gpio_ctrl";
    pinctrl-0 = <...>;
    pinctrl-1 = <...>;
    pinctrl-names = "pull_up_default", "pull_down_default";
    qcom,pcb-gpio1 = <...>;
    qcom,pcb-gpio2 = <...>;
    qcom,pcb-gpio3 = <...>;
    qcom,rf-gpio1 = <...>;
    qcom,rf-gpio2 = <...>;
};
```

Evidência local: `live.dts`, run `NX809J-20260711T011653Z`, linhas 6570-6580.

O `compatible` efetivo é `nubia_hw_gpio_ctrl`. Uma varredura textual anterior
associou incorretamente o módulo a nós `qcom,mdss_mdp`; essa associação foi
descartada como falso positivo e não deve ser usada em implementação ou
validação.
