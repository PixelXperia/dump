.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;
.super Landroid/widget/FrameLayout;
.source "ThemeableAnalogClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeableAnalogClock"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHoursHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinutesHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

.field private final mOffscreenCanvas:Landroid/graphics/Canvas;

.field private mSecondsHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

.field private final mTicker:Ljava/lang/Runnable;

.field private mTicking:Z

.field private mTime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance p1, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    .line 87
    new-instance p1, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;-><init>(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mOffscreenCanvas:Landroid/graphics/Canvas;

    .line 130
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    const/4 p1, 0x0

    .line 166
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Ljava/lang/Runnable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 187
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private getClockFaceView()Landroid/widget/ImageView;
    .locals 4

    .line 340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 342
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 343
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 344
    check-cast v2, Landroid/widget/ImageView;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerReceiver()V
    .locals 4

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setTimeZone()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    return-void
.end method

.method private storeClockHand(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->getHandType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 220
    sget-object p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled clock hand type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHoursHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    goto :goto_0

    .line 214
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mMinutesHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    goto :goto_0

    .line 211
    :cond_2
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mSecondsHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mSecondsHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    invoke-direct {p0, v3, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mMinutesHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    mul-int/lit8 v3, v1, 0x6

    int-to-float v3, v3

    invoke-direct {p0, v0, v3}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHoursHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    mul-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V

    return-void
.end method

.method private updateHandsRotation(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;F)V
    .locals 0

    .line 240
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setRotation(F)V

    return-void
.end method

.method private updateThemeResources()V
    .locals 12

    .line 302
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 303
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    sget v1, Lcom/android/systemui/R$drawable;->somc_themeable_analog_clock_face:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 307
    sget v3, Lcom/android/systemui/R$string;->somc_keyguard_themeable_analog_clock_name:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    sget v4, Lcom/android/systemui/R$drawable;->somc_themeable_analog_clock_hour_hand:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 311
    sget v5, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_hour_hand_pivot_x:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 313
    sget v6, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_hour_hand_pivot_y:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 315
    sget v7, Lcom/android/systemui/R$drawable;->somc_themeable_analog_clock_minute_hand:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 317
    sget v8, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_minute_hand_pivot_x:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 319
    sget v9, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_minute_hand_pivot_y:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 321
    sget v10, Lcom/android/systemui/R$drawable;->somc_themeable_analog_clock_second_hand:I

    invoke-virtual {v0, v10, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 323
    sget v10, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_second_hand_pivot_x:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 325
    sget v11, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_second_hand_pivot_y:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 328
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->getClockFaceView()Landroid/widget/ImageView;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 330
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHoursHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->updateThemeResources(Landroid/graphics/drawable/Drawable;FFLjava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mMinutesHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    invoke-virtual {v1, v7, v8, v9, v3}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->updateThemeResources(Landroid/graphics/drawable/Drawable;FFLjava/lang/String;)V

    .line 335
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mSecondsHand:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    invoke-virtual {p0, v2, v10, v0, v3}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->updateThemeResources(Landroid/graphics/drawable/Drawable;FFLjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 4

    .line 195
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 200
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 201
    instance-of v3, v2, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    if-eqz v3, :cond_0

    .line 202
    check-cast v2, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;

    invoke-direct {p0, v2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->storeClockHand(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->updateThemeResources()V

    return-void
.end method

.method public final onTimeChanged()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->update()V

    return-void
.end method

.method public setDoze()V
    .locals 0

    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final startClockTicking()V
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    .line 261
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->setTimeZone()V

    .line 263
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->registerReceiver()V

    .line 265
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final stopClockTicking()V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->mTicking:Z

    :cond_0
    return-void
.end method
