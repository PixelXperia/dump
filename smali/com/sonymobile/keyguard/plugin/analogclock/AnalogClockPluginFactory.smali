.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "AnalogClockPluginFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->getClockView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;->getClockSize(Landroid/content/res/Resources;)F

    move-result p0

    .line 58
    sget v1, Lcom/android/systemui/R$dimen;->somc_keyguard_clock_picker_clock_back_plate_width:I

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr p1, v1

    div-float v1, p1, p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    move p0, p1

    .line 72
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v1, 0x11

    invoke-direct {p1, v0, p0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p0, 0x0

    .line 75
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p2
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 27
    sget p1, Lcom/android/systemui/R$layout;->somc_analog_clock_view:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected getClockSize(Landroid/content/res/Resources;)F
    .locals 0

    .line 47
    sget p0, Lcom/android/systemui/R$dimen;->somc_analog_clock_size:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method protected getClockView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 37
    sget p0, Lcom/android/systemui/R$id;->somc_analog_clock:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
