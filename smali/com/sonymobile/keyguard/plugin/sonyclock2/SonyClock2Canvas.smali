.class public Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;
.super Landroid/view/View;
.source "SonyClock2Canvas.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final STRING_PATH_HOURS:[Ljava/lang/String;

.field private static final STRING_PATH_MINUTES:[Ljava/lang/String;


# instance fields
.field private mAnimDurationStroke:I

.field private mAnimDurationTotal:I

.field private mAnimDurationZoomout:I

.field private mContext:Landroid/content/Context;

.field private mDotPos:[F

.field private mDotRadius:F

.field private mDotRadiusRate:F

.field private mMeasure:Landroid/graphics/PathMeasure;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private final mPathHours:[Landroid/graphics/Path;

.field private final mPathMinutes:[Landroid/graphics/Path;

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "M41.39,5.64C20.81,5.64,5.29,21.1,5.29,61c0,39,15.4,55,36.1,55,19.94,0,35.37-16.3,35.37-55,0-39.9-15.43-55.36-35.37-55.36"

    const-string v1, "M21.68,23.83c7.69-5.1,24.49-16.07,24.49-16.07h1.39V115.7"

    const-string v2, "M12.65,18C28.15-.45,58.31,3.94,66,17.45c17.57,30.7-20.66,59.23-56.4,95.65v1.15H73.82"

    const-string v3, "M10.55,13C33,0.28,67.58,3,67.58,32.43c0,24.37-25.85,27.11-36.79,27.11h0s40.29-4,40.29,28.59c0,33.59-43.58,32.66-62.9,21"

    const-string v4, "M79.65,83.61H4.53V83.37L57.77,7.76H60V115.7"

    const-string v5, "M67.26,7.76H16.2l-1.64,47s27.17-7.93,44.85,3.74c15.87,10.47,17.5,40.8-2.55,52.65-14,8.26-32.67,5.45-47.44-.57"

    const-string v6, "M67.62,9S46.83-.08,29.15,11.41C12.44,22.26,8,54.9,9.06,75.4s9.7,40.48,32.86,40.48c19.33,0,33-12.93,33-34.46,0-18.23-12-33.18-32.45-33.18C26.41,48.24,8.6,60.07,9.68,82"

    const-string v7, "M8.91,7.76H71.63V8.49s-18,25.69-30.29,65.15c-4,12.71-9.37,35.73-9.37,42"

    const-string v8, "M42.22,58.3C22.63,58.3,6.84,69.2,6.84,87.48c0,20.44,15.87,28.44,35.46,28.44s33.83-8.81,33.83-29.25c0-19.1-18.63-28.37-33.91-28.37C24.69,58.3,10.49,50.44,10.49,32c0-16.45,14.2-26.26,31.73-26.26s30.27,11,30.27,25.53c0,18.39-12.75,27-30.27,27"

    const-string v9, "M73.38,40.25c1.7,16.9-12.08,33.29-33.73,33.29-19.21,0-31.6-14.61-31.6-33.33C8.05,19.55,22.39,5.79,39.9,5.79c15.56,0,34.64,8.78,34,46.46-0.51,31.8-7.7,51.84-23.73,60.33-14.74,7.81-36.2.08-36.2,0.08"

    const-string v10, "M31.48,23.83C39.17,18.74,56,7.76,56,7.76h1.39V115.7"

    .line 39
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->STRING_PATH_HOURS:[Ljava/lang/String;

    const-string v1, "M18.2,5C9.82,5,3.9,11.2,3.9,27S9.82,48.93,18.2,48.93c8.06,0,13.89-6.13,13.89-21.93S26.26,5,18.2,5"

    const-string v2, "M8.09,12.87L19.37,5.72h1.4V49.83"

    const-string v3, "M5.57,9.62C12.82,3,24.68,4,27.8,9.53c7.22,12.69-8,23.23-22.31,37.84v0.79H32"

    const-string v4, "M4.91,7.87c9.47-5,23.66-4.26,23.66,7.49,0,8.91-11.71,10.88-15.59,10.88h0c3.07,0,16.87.1,16.87,11.34,0,13.4-18,13-25.88,8.65"

    const-string v5, "M34.13,36.59H3.24V34.81l19.52-29h3v44"

    const-string v6, "M29.26,5.69h-21L7.43,24.08c4.86-.66,12.88-1.46,18.22,2.4,6,4.35,6.35,15.95-1.64,20.46-5.64,3.19-14.13,2.21-19.61-.33"

    const-string v7, "M29.33,6.39s-9.87-3.45-16,.71c-6.56,4.43-8.55,16.25-8,26.07,0.44,8.22,4.47,15.75,13.23,15.75,7.85,0,13.26-5,13.26-13.71C31.76,27.8,27.33,22,19,22,12.51,22,5.1,27,5.53,35.81"

    const-string v8, "M4.61,5.84h25.6V6.45c-6.66,10.44-9.35,17-12.74,28.2-0.84,2.78-3.15,11.87-3.15,15.08"

    const-string v9, "M18.49,25.92c-7.5,0-14.14,4.36-14.14,11.67C4.35,45.76,10.7,49,18.53,49c7.5,0,13.53-3.52,13.53-11.69,0-7.64-7.93-11.34-13.56-11.34-6.84,0-12.56-3.14-12.56-10.5,0-6.58,5.56-10.5,12.56-10.5s12,4.41,12,10.21c0,7.35-5,10.79-12,10.79"

    const-string v10, "M30.91,17.95c0.68,6.72-4.84,14-13.45,14C9.18,32,4.6,26.18,4.6,18.74c0-8.21,5.36-13.68,13-13.68,6.18,0,13.92,3.49,13.68,18.47C31,36.16,28,44.13,21.66,47.5c-5.86,3.11-15.3,0-15.3,0"

    const-string v11, "M12.09,12.87L23.37,5.72h1.4V49.83"

    .line 64
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->STRING_PATH_MINUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    .line 100
    new-instance p2, Landroid/graphics/PathMeasure;

    invoke-direct {p2}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mMeasure:Landroid/graphics/PathMeasure;

    .line 103
    sget-object p2, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->STRING_PATH_HOURS:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [Landroid/graphics/Path;

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathHours:[Landroid/graphics/Path;

    .line 104
    sget-object p2, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->STRING_PATH_MINUTES:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [Landroid/graphics/Path;

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathMinutes:[Landroid/graphics/Path;

    const/4 p2, -0x1

    .line 106
    iput p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mTextColor:I

    .line 117
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    sget p2, Lcom/android/systemui/R$integer;->somc_sony_clock_2_digit_draw_animation_duration:I

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationStroke:I

    .line 124
    sget p2, Lcom/android/systemui/R$integer;->somc_sony_clock_2_dot_zoomout_animation_duration:I

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationZoomout:I

    .line 126
    iget p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationStroke:I

    iget p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationZoomout:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationTotal:I

    .line 128
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mTextColor:I

    .line 130
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->initializeColor()V

    .line 131
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->initializePath()V

    return-void
.end method

.method private convertDp2Px(F)F
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 157
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private initializeColor()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initializePath()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 142
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v0, 0x0

    move v2, v0

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathHours:[Landroid/graphics/Path;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 146
    sget-object v4, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->STRING_PATH_HOURS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    aput-object v4, v3, v2

    .line 147
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathHours:[Landroid/graphics/Path;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathMinutes:[Landroid/graphics/Path;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 150
    sget-object v3, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->STRING_PATH_MINUTES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    aput-object v3, v2, v0

    .line 151
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathMinutes:[Landroid/graphics/Path;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private startAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 209
    iget v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationTotal:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "elapsed_time"

    .line 210
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    iget p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationTotal:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 213
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "elapsed_time"

    .line 218
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 220
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationStroke:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gt p1, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    int-to-float p1, p1

    iget v5, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationStroke:I

    int-to-float v5, v5

    div-float v5, p1, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    new-array v0, v3, [F

    new-array v1, v3, [F

    .line 226
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iget v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationStroke:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 228
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotPos:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 230
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotRadiusRate:F

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    new-array v0, v3, [F

    new-array v1, v3, [F

    .line 236
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 237
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotPos:[F

    .line 239
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationTotal:I

    sub-int/2addr v0, p1

    .line 240
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mAnimDurationZoomout:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotRadiusRate:F

    .line 242
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 162
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotPos:[F

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotPos:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotRadius:F

    iget v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotRadiusRate:F

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setDigit(IZZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotPos:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 183
    iput v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotRadiusRate:F

    .line 184
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPath:Landroid/graphics/Path;

    if-eqz p2, :cond_0

    .line 188
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathHours:[Landroid/graphics/Path;

    .line 189
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    const v1, 0x408570a4    # 4.17f

    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->convertDp2Px(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 190
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->convertDp2Px(F)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotRadius:F

    goto :goto_0

    .line 192
    :cond_0
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPathMinutes:[Landroid/graphics/Path;

    .line 193
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPaint:Landroid/graphics/Paint;

    const v1, 0x40566666    # 3.35f

    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->convertDp2Px(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 194
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->convertDp2Px(F)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mDotRadius:F

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPath:Landroid/graphics/Path;

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/16 p1, 0xa

    aget-object p1, p2, p1

    goto :goto_1

    :cond_1
    aget-object p1, p2, p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 199
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mMeasure:Landroid/graphics/PathMeasure;

    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mPath:Landroid/graphics/Path;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    if-nez p4, :cond_2

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->startAnimation()V

    :goto_2
    return-void
.end method

.method public updateThemeColor(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->mTextColor:I

    .line 247
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->initializeColor()V

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
