.class public Lcom/sonymobile/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# instance fields
.field private final mGamma:F

.field private final mIntercept:F

.field private final mSlope:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/android/settingslib/R$dimen;->config_brightnessUtilsSlope:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mSlope:F

    .line 28
    sget v0, Lcom/android/settingslib/R$dimen;->config_brightnessUtilsIntercept:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mIntercept:F

    .line 29
    sget v0, Lcom/android/settingslib/R$dimen;->config_brightnessUtilsGamma:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mGamma:F

    return-void
.end method


# virtual methods
.method public convertGammaToLinear(III)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3ff

    .line 45
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 46
    iget v0, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mSlope:F

    int-to-float p1, p1

    iget v1, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mGamma:F

    invoke-static {p1, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result p1

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mIntercept:F

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 47
    invoke-static {p0, p2, p3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method public convertLinearToGamma(III)I
    .locals 0

    .line 60
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    int-to-float p1, p1

    .line 61
    iget p2, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mIntercept:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mSlope:F

    div-float/2addr p1, p2

    iget p0, p0, Lcom/sonymobile/settingslib/display/BrightnessUtils;->mGamma:F

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p0

    invoke-static {p1, p2}, Landroid/util/MathUtils;->pow(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 p1, 0x0

    const/16 p2, 0x3ff

    .line 62
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method
