.class public Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "DigitalClockKeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method

.method private scaleTextViewsIfNecessary(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 6

    .line 55
    sget p0, Lcom/android/systemui/R$id;->somc_digital_clock_view_clock:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextClock;

    .line 56
    sget v0, Lcom/android/systemui/R$id;->somc_digital_clock_view_am_pm:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 59
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/16 v5, 0x17

    .line 65
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x2f

    .line 66
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->keyguard_widget_24_hours_format:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Landroid/widget/TextClock;->getTextSize()F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 75
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->somc_keyguard_clock_picker_clock_back_plate_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    const v4, 0x3f99999a    # 1.2f

    if-lez v3, :cond_0

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    const/4 v3, 0x1

    .line 86
    invoke-virtual {p0, v3}, Landroid/widget/TextClock;->setHorizontallyScrolling(Z)V

    .line 87
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_0

    :cond_0
    const p0, 0x3f4ccccd    # 0.8f

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 98
    :goto_0
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 103
    sget v1, Lcom/android/systemui/R$dimen;->sony_digital_clock_picker_top_margin:I

    .line 104
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 105
    invoke-virtual {p0, v5, p2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x8

    .line 110
    invoke-virtual {v0, p0}, Landroid/widget/TextClock;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 49
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClockKeyguardComponentFactory;->scaleTextViewsIfNecessary(Landroid/view/ViewGroup;Landroid/content/Context;)V

    return-object p2
.end method

.method public final createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 38
    sget p1, Lcom/android/systemui/R$layout;->somc_digital_clock_view:I

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method
