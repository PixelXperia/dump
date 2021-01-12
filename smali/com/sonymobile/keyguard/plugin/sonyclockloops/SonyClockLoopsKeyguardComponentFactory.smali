.class public Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoopsKeyguardComponentFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "SonyClockLoopsKeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoopsKeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p0, p2}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->setPicker(Z)V

    .line 32
    sget p2, Lcom/android/systemui/R$id;->somc_sony_clock_loops_clock_view:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->sony_clock_loops_picker_character_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    .line 36
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    :cond_0
    return-object p0
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 22
    sget p1, Lcom/android/systemui/R$layout;->somc_sony_clock_loops_view:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    return-object p0
.end method
