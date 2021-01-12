.class public Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
.super Landroid/widget/LinearLayout;
.source "SonyClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# instance fields
.field private mAlarmDisplay:Landroid/widget/TextView;

.field private mAmPmDisplay:Landroid/widget/TextView;

.field private mAmPmFormat:Ljava/lang/CharSequence;

.field private mDashDisplay:Landroid/widget/TextView;

.field private mDateDisplay:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/CharSequence;

.field private mHourFormat12HourClock:Ljava/lang/CharSequence;

.field private mHourFormat24HourClock:Ljava/lang/CharSequence;

.field private mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mIsTicking:Z

.field private mMinuteFormat:Ljava/lang/CharSequence;

.field private mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

.field private mNextAlarmText:Ljava/lang/String;

.field private mTime:Ljava/util/Calendar;

.field private final mTimeEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeSettingsChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    .line 91
    new-instance p1, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance p1, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime(Z)V

    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private fetchDigitViewHandles()V
    .locals 4

    .line 193
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_hour_tens_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 194
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_hour_ones_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 195
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_minute_tens_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 196
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_minute_ones_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    .line 198
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_digit_current_hour_tens:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 199
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_digit_old_hour_tens:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 200
    sget v2, Lcom/android/systemui/R$id;->somc_sony_clock_digit_place_holder_hour_tens:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 203
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_digit_current_hour_ones:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_digit_old_hour_ones:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 205
    sget v2, Lcom/android/systemui/R$id;->somc_sony_clock_digit_place_holder_hour_ones:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 208
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_digit_current_minute_tens:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_digit_old_minute_tens:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 210
    sget v2, Lcom/android/systemui/R$id;->somc_sony_clock_digit_place_holder_minute_tens:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 213
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_digit_current_minute_ones:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 214
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_digit_old_minute_ones:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 215
    sget v2, Lcom/android/systemui/R$id;->somc_sony_clock_digit_place_holder_minute_ones:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 216
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private fetchViewHandles()V
    .locals 2

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->fetchDigitViewHandles()V

    .line 169
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_ampm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_dash:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_date:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    .line 172
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_alarm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    .line 174
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_hour_format_12_hour_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    .line 177
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_hour_format_24_hour_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    .line 179
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_minute_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteFormat:Ljava/lang/CharSequence;

    .line 180
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateFormat()V

    .line 181
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_am_pm_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmFormat:Ljava/lang/CharSequence;

    .line 183
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clockplugin_scale_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const v0, 0x3ecccccd    # 0.4f

    .line 185
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setMinScale(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 187
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setMinScaleForComputeNotifications(F)V

    return-void
.end method

.method private registerTimeEventReceiver()V
    .locals 4

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerTimeSettingsChangeObserver()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 342
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterTimeEventReceiver()V
    .locals 1

    .line 337
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterTimeSettingsChangeObserver()V
    .locals 1

    .line 347
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 348
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAlarmDisplay()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateClockDisplay(Z)V
    .locals 5

    .line 245
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 255
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 256
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V

    .line 259
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateDisplay()V

    .line 260
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateAlarmDisplay()V

    :cond_1
    return-void
.end method

.method private updateDateDisplay()V
    .locals 4

    .line 265
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    .line 273
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->somc_sony_clock_date_digit_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    .line 275
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->somc_sony_clock_date_digit_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    .line 282
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->somc_sony_clock_date_digit_size:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 281
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateDateFormat()V
    .locals 3

    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->somc_sony_clock_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateFormat:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateThemeColors()V
    .locals 3

    .line 375
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 376
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 382
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 383
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 384
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 385
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 390
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime(Z)V

    return-void
.end method

.method private updateTime(Z)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 238
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateClockDisplay(Z)V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 0

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 159
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->fetchViewHandles()V

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateThemeColors()V

    return-void
.end method

.method public setDoze()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 356
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 357
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 358
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateThemeColor(I)V

    .line 359
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDashDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 364
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mAlarmDisplay:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 366
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setNextAlarmText(Ljava/lang/String;)V
    .locals 1

    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mNextAlarmText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 302
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateClockDisplay(Z)V

    return-void
.end method

.method public final startClockTicking()V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    .line 309
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateDateFormat()V

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->createTime(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->registerTimeEventReceiver()V

    .line 312
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->registerTimeSettingsChangeObserver()V

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->updateTime()V

    return-void
.end method

.method public final stopClockTicking()V
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->mIsTicking:Z

    .line 321
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->unregisterTimeEventReceiver()V

    .line 322
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->unregisterTimeSettingsChangeObserver()V

    :cond_0
    return-void
.end method
