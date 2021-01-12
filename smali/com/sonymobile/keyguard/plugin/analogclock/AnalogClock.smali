.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# static fields
.field private static final DATE_FORMAT_RESOURCES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmDrawable:Landroid/graphics/drawable/Drawable;

.field private mAlarmDrawableMargin:F

.field private mAlarmDrawableVerticalOffset:F

.field private final mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

.field private final mCenter:Landroid/graphics/RectF;

.field private final mCenterClipPath:Landroid/graphics/Path;

.field private mCenterSize:F

.field private mCenterStrokeWidth:F

.field private final mDateFormats:[Ljava/lang/String;

.field private mDateTextSize:F

.field private mDateTextSpace:F

.field private final mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

.field private mDozing:Z

.field private mEllipseDepth:F

.field private mEllipsePower:F

.field private final mHandler:Landroid/os/Handler;

.field private final mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

.field private mHourTickLength:F

.field private final mHourTickPath:Landroid/graphics/Path;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInvalidateBounds:Landroid/graphics/Rect;

.field private mIsTicking:Z

.field private final mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

.field private mMinuteTickLength:F

.field private final mMinuteTickPath:Landroid/graphics/Path;

.field private final mOldDates:[Ljava/lang/String;

.field private mOldSecondsDotBounds:Landroid/graphics/Rect;

.field private final mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

.field private final mSecondRunnable:Ljava/lang/Runnable;

.field private mSecondsDotUpdateBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTickOffset:F

.field private final mTickPaint:Landroid/graphics/Paint;

.field private mTickRadius:F

.field private mTickWidth:F

.field private final mTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 90
    sget v1, Lcom/android/systemui/R$string;->somc_analog_clock_date_format_month:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->somc_analog_clock_date_format_day_in_month:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->somc_analog_clock_date_format_day_in_week:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->DATE_FORMAT_RESOURCES:[I

    .line 102
    const-class v0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 242
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance p3, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance p3, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;-><init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 p3, 0x0

    .line 137
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    .line 139
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipsePower:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 141
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    const/high16 p3, 0x42c80000    # 100.0f

    .line 143
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    .line 145
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    .line 147
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    const/high16 p3, 0x41b00000    # 22.0f

    .line 149
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    const/high16 p3, 0x41400000    # 12.0f

    .line 151
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    .line 153
    iget p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    div-float/2addr v1, v0

    sub-float/2addr p3, v1

    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickOffset:F

    .line 155
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    .line 157
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance p3, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_centerSize:I

    sget v1, Lcom/android/systemui/R$styleable;->AnalogClock_hourHandLength:I

    sget v2, Lcom/android/systemui/R$styleable;->AnalogClock_hourHandThickness:I

    sget v3, Lcom/android/systemui/R$styleable;->AnalogClock_clockColor:I

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;-><init>(IIII)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    .line 165
    new-instance p3, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_centerSize:I

    sget v1, Lcom/android/systemui/R$styleable;->AnalogClock_minuteHandLength:I

    sget v2, Lcom/android/systemui/R$styleable;->AnalogClock_minuteHandThickness:I

    sget v3, Lcom/android/systemui/R$styleable;->AnalogClock_clockColor:I

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;-><init>(IIII)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    .line 171
    new-instance p3, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_secondDotDiameter:I

    sget v1, Lcom/android/systemui/R$styleable;->AnalogClock_secondDotColor:I

    invoke-direct {p3, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;-><init>(II)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/4 p3, 0x3

    new-array v0, p3, [Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    .line 176
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    new-array v0, p3, [Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateFormats:[Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    .line 189
    invoke-static {}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->createTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    .line 197
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldSecondsDotBounds:Landroid/graphics/Rect;

    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    .line 213
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDozing:Z

    .line 244
    new-instance v1, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    :goto_0
    if-ge v0, p3, :cond_0

    .line 246
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateFormats:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->DATE_FORMAT_RESOURCES:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 247
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 248
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    new-instance v2, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;-><init>(Landroid/graphics/Paint;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 252
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupPaint()V

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateThemeColors()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/util/Calendar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateDateTexts()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private drawAlarm(Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x3fcccccd    # 1.6f

    mul-float/2addr p3, v0

    .line 364
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    .line 365
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 366
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    .line 367
    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableMargin:F

    sub-float/2addr v1, v2

    .line 366
    invoke-direct {p0, p1, v1, p3}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawAlarmDrawable(Landroid/graphics/Canvas;FF)V

    .line 368
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    add-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawText(Landroid/graphics/Canvas;FFLandroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private drawAlarmDrawable(Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    .line 377
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBottom()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p3, v2

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableVerticalOffset:F

    add-float/2addr p3, v2

    float-to-int p3, p3

    sub-int v1, p3, v1

    .line 379
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2, v1, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 385
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawClockFace(Landroid/graphics/Canvas;II)V
    .locals 3

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 343
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawTicks(Landroid/graphics/Canvas;)V

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawDateBlock(Landroid/graphics/Canvas;FF)V

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 346
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 347
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->draw(Landroid/graphics/Canvas;FF)V

    .line 348
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->draw(Landroid/graphics/Canvas;FF)V

    .line 349
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 350
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawCenter(Landroid/graphics/Canvas;)V

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawAlarm(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method private drawDateBlock(Landroid/graphics/Canvas;FF)V
    .locals 5

    .line 420
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->measureDateStrings()V

    .line 421
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getLength()F

    move-result v0

    .line 424
    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p2

    add-float/2addr v0, p2

    iget p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    sub-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    sub-float/2addr v1, v0

    .line 426
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    sub-float/2addr p3, v0

    iget p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    sub-float/2addr p3, p2

    const/4 p2, 0x0

    const-string v0, "sans-serif-medium"

    .line 428
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const-string v3, "sst"

    .line 429
    invoke-static {v3, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 431
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, p2

    invoke-virtual {v4, p1, v1, p3, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawText(Landroid/graphics/Canvas;FFLandroid/graphics/Typeface;)V

    .line 432
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object p2, v4, p2

    invoke-virtual {p2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBottom()I

    move-result p2

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, v2

    .line 433
    invoke-virtual {v4}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getTop()I

    move-result v4

    sub-int/2addr p2, v4

    int-to-float p2, p2

    iget v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    add-float/2addr p2, v4

    add-float/2addr p3, p2

    .line 434
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object p2, p2, v2

    invoke-virtual {p2, p1, v1, p3, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawText(Landroid/graphics/Canvas;FFLandroid/graphics/Typeface;)V

    .line 435
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBottom()I

    move-result p2

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 436
    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getTop()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    add-float/2addr p2, v2

    add-float/2addr p3, p2

    .line 437
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object p0, p0, v3

    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawText(Landroid/graphics/Canvas;FFLandroid/graphics/Typeface;)V

    return-void
.end method

.method private drawTick(Landroid/graphics/Path;FFFFF)V
    .locals 5

    .line 462
    invoke-direct {p0, p5}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getRadiusOffset(F)F

    move-result v0

    float-to-double v1, p5

    .line 463
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p5, v3

    .line 464
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 465
    iget p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    sub-float/2addr p0, p2

    add-float/2addr p0, v0

    sub-float/2addr p0, p6

    add-float/2addr p2, p0

    mul-float p6, p0, p5

    add-float/2addr p6, p3

    mul-float/2addr p0, v1

    add-float/2addr p0, p4

    .line 467
    invoke-virtual {p1, p6, p0}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float/2addr p5, p2

    add-float/2addr p3, p5

    mul-float/2addr p2, v1

    add-float/2addr p4, p2

    .line 468
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 357
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 358
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getRadiusOffset(F)F
    .locals 4

    .line 473
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 477
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 478
    iget p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipsePower:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    float-to-double p0, p0

    mul-double/2addr v0, p0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method private invalidateDateBounds()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 538
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 539
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 540
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private measureDateStrings()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    .line 442
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    .line 443
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 603
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    return-void
.end method

.method private setupAlarmAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 276
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_alarmDrawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    .line 277
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_alarmDrawableMargin:I

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableMargin:F

    .line 279
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_alarmDrawableVerticalOffset:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableVerticalOffset:F

    return-void
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->AnalogClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 260
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupEllipseAttributes(Landroid/content/res/TypedArray;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupTicksAttributes(Landroid/content/res/TypedArray;)V

    .line 262
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 263
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 264
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockColor(Landroid/content/res/TypedArray;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupAlarmAttributes(Landroid/content/res/TypedArray;)V

    .line 267
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_centerSize:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    .line 269
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupCenterAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private setupCenterAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 318
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_centerStrokeWidth:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterStrokeWidth:F

    return-void
.end method

.method private setupClockColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 285
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_clockColor:I

    const v1, -0xff01

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupDateTextAttributes(Landroid/content/res/TypedArray;I)V

    .line 287
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V
    .locals 0

    .line 328
    iget p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSize:F

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->setTextSize(F)V

    return-void
.end method

.method private setupDateTextAttributes(Landroid/content/res/TypedArray;I)V
    .locals 2

    .line 291
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_dateTextSize:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSize:F

    .line 293
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_dateTextSpace:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    .line 295
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    const p2, 0x3fec4ec5

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    .line 297
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    .line 298
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    .line 299
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    return-void
.end method

.method private setupEllipseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 313
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_ellipseDepth:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    .line 314
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_ellipsePower:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipsePower:F

    return-void
.end method

.method private setupPaint()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private setupTickPath(II)V
    .locals 10

    .line 447
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 448
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x168

    if-ge v0, v1, :cond_1

    int-to-double v1, v0

    .line 450
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v8, v1

    .line 451
    rem-int/lit8 v1, v0, 0x1e

    if-nez v1, :cond_0

    .line 452
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    int-to-float v6, p1

    int-to-float v7, p2

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawTick(Landroid/graphics/Path;FFFFF)V

    goto :goto_1

    .line 454
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    int-to-float v6, p1

    int-to-float v7, p2

    iget v9, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickOffset:F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawTick(Landroid/graphics/Path;FFFFF)V

    :goto_1
    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupTicksAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 303
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_tickWidth:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    .line 304
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_tickRadius:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    .line 305
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_hourTickLength:I

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    .line 307
    sget v0, Lcom/android/systemui/R$styleable;->AnalogClock_minuteTickLength:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    .line 309
    iget p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickOffset:F

    return-void
.end method

.method private updateClock(II)V
    .locals 2

    .line 491
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 492
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f060a92

    mul-float/2addr v0, v1

    int-to-float p1, p1

    const v1, 0x3c0efa35

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->setRotation(F)Z

    move-result p2

    .line 494
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    const v1, 0x3dd67750

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->setRotation(F)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 499
    :cond_1
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDozing:Z

    if-nez p1, :cond_2

    .line 500
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateSecondsHand()V

    :cond_2
    return-void
.end method

.method private updateDateFormats()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateFormats:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->DATE_FORMAT_RESOURCES:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDateTexts()V
    .locals 4

    .line 518
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->invalidateDateBounds()V

    .line 519
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateFormats:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 523
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 524
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    aput-object v2, v3, v1

    .line 525
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->setText(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSecondsHand()V
    .locals 6

    .line 505
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dd67750

    mul-float/2addr v0, v1

    .line 506
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->setRotation(F)Z

    .line 507
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldSecondsDotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->getBounds(Landroid/graphics/Rect;)V

    .line 509
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getRadiusOffset(F)F

    move-result v1

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickOffset:F

    sub-float/2addr v1, v2

    .line 510
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 510
    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->calculateSecondsDotPosition(FFFF)V

    .line 512
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->getBounds(Landroid/graphics/Rect;)V

    .line 513
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldSecondsDotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 514
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateThemeColors()V
    .locals 4

    .line 630
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 631
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 635
    sget v3, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_analog_clock_seconds_hand:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 639
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->updateClockColor(I)V

    .line 640
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->updateClockColor(I)V

    .line 641
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {v2, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->updateClockColor(I)V

    .line 642
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 643
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 644
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 485
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateClock(II)V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 625
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateTime()V

    .line 626
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateDateTexts()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 333
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawClockFace(Landroid/graphics/Canvas;II)V

    .line 335
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDozing:Z

    if-nez v0, :cond_0

    .line 336
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    .line 585
    iget-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    int-to-float p4, p1

    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    sub-float v1, p4, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, p2

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    add-float v4, p4, v0

    div-float/2addr v4, v2

    add-float/2addr p4, v0

    div-float/2addr p4, v2

    invoke-virtual {p3, v1, v3, v4, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 587
    div-int/lit8 p3, p1, 0x2

    div-int/lit8 p4, p2, 0x2

    invoke-direct {p0, p3, p4}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupTickPath(II)V

    .line 588
    iget-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 589
    iget-object p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    iget-object p4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, p4, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateClock(II)V

    return-void
.end method

.method public setDoze()V
    .locals 3

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDozing:Z

    .line 614
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->updateClockColor(I)V

    .line 615
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->updateClockColor(I)V

    .line 616
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 620
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setNextAlarmText(Ljava/lang/String;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->setText(Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 597
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 598
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final startClockTicking()V
    .locals 5

    .line 548
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    if-nez v0, :cond_1

    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 551
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 552
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 556
    invoke-direct {p0, v4}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setTimeZone(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateTime()V

    .line 559
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateDateFormats()V

    .line 560
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateDateTexts()V

    .line 561
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDozing:Z

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x1

    .line 564
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    :cond_1
    return-void
.end method

.method public final stopClockTicking()V
    .locals 2

    .line 574
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDozing:Z

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 577
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    :cond_1
    return-void
.end method
