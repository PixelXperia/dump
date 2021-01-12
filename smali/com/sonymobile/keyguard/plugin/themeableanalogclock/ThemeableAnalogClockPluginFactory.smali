.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClockPluginFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "ThemeableAnalogClockPluginFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method

.method private getClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->somc_themeable_analog_clock_view:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private getSkinningBridgeClockLayout(Landroid/view/ViewGroup;)Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;
    .locals 0

    .line 70
    sget p0, Lcom/android/systemui/R$id;->somc_themeable_analog_clock:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;

    return-object p0
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClockPluginFactory;->getClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClockPluginFactory;->getSkinningBridgeClockLayout(Landroid/view/ViewGroup;)Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;

    move-result-object p0

    const-string p2, "lockscreenClockPicker"

    .line 47
    invoke-virtual {p0, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->setPlace(Ljava/lang/String;)V

    return-object p1
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClockPluginFactory;->getClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClockPluginFactory;->getSkinningBridgeClockLayout(Landroid/view/ViewGroup;)Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;

    move-result-object p0

    const-string p2, "lockscreenClock"

    .line 32
    invoke-virtual {p0, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/SkinningBridgeClockLayout;->setPlace(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->getLockScreenClockDimens()Landroid/util/Size;

    move-result-object p2

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method
