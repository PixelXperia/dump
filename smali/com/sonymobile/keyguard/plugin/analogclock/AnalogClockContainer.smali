.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;
.super Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.source "AnalogClockContainer.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public setDoze()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setDoze()V

    :cond_0
    return-void
.end method

.method public final setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    invoke-interface {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setNextAlarmText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final startClockTicking()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    :cond_0
    return-void
.end method

.method public final stopClockTicking()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockContainer;->getClockPluginChild()Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 100
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    :cond_0
    return-void
.end method
