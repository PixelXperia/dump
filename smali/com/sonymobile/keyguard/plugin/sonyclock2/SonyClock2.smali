.class public Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;
.super Landroid/widget/LinearLayout;
.source "SonyClock2.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# instance fields
.field private mAlarmDisplay:Landroid/widget/TextView;

.field private mAmPmDisplay:Landroid/widget/TextView;

.field private mAmPmFormat:Ljava/lang/CharSequence;

.field private mDateDisplay:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/CharSequence;

.field private mHourFormat12HourClock:Ljava/lang/CharSequence;

.field private mHourFormat24HourClock:Ljava/lang/CharSequence;

.field private mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

.field private mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

.field private mIsTicking:Z

.field private mMinuteFormat:Ljava/lang/CharSequence;

.field private mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

.field private mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

.field private mNextAlarmText:Ljava/lang/String;

.field private mTime:Ljava/util/Calendar;

.field private final mTimeEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeSettingsChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mIsTicking:Z

    .line 88
    new-instance p1, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance p1, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$2;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateTime(Z)V

    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 202
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private fetchDigitViewHandles()V
    .locals 1

    .line 189
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_2_hour_tens_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    .line 190
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_2_hour_ones_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    .line 191
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_2_minute_tens_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    .line 192
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_2_minute_ones_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    return-void
.end method

.method private fetchViewHandles()V
    .locals 2

    .line 164
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->fetchDigitViewHandles()V

    .line 165
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_2_ampm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmDisplay:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_2_date:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mDateDisplay:Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_2_alarm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    .line 169
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_hour_format_12_hour_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    .line 172
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_hour_format_24_hour_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    .line 174
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_minute_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteFormat:Ljava/lang/CharSequence;

    .line 175
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateDateFormat()V

    .line 176
    sget v1, Lcom/android/systemui/R$string;->somc_sony_clock_am_pm_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmFormat:Ljava/lang/CharSequence;

    .line 178
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clockplugin_scale_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const v0, 0x3f19999a    # 0.6f

    .line 180
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setMinScale(F)V

    const v0, 0x3f333334    # 0.70000005f

    .line 183
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setMinScaleForComputeNotifications(F)V

    return-void
.end method

.method private registerTimeEventReceiver()V
    .locals 4

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerTimeSettingsChangeObserver()V
    .locals 3

    .line 313
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 314
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterTimeEventReceiver()V
    .locals 1

    .line 309
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterTimeSettingsChangeObserver()V
    .locals 1

    .line 319
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAlarmDisplay()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mNextAlarmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateClockDisplay(Z)V
    .locals 7

    .line 222
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mIsTicking:Z

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourFormat24HourClock:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourFormat12HourClock:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 232
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    const/4 v6, 0x1

    xor-int/2addr v1, v6

    .line 231
    invoke-virtual {v3, v5, p1, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateDigit(CZZ)V

    .line 233
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateDigit(CZ)V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateDigit(CZ)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateDigit(CZ)V

    .line 237
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateDateDisplay()V

    .line 238
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateAlarmDisplay()V

    :cond_1
    return-void
.end method

.method private updateDateDisplay()V
    .locals 4

    .line 243
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$integer;->somc_digital_clock_max_ampm_chars:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 251
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mDateDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mDateFormat:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    invoke-static {v1, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 255
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDateFormat()V
    .locals 3

    .line 196
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->somc_sony_clock_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mDateFormat:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateThemeColors()V
    .locals 3

    .line 346
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 347
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 353
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 354
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 355
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 356
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 360
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateTime(Z)V

    return-void
.end method

.method private updateTime(Z)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 214
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateClockDisplay(Z)V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateTime()V

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 0

    .line 154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->fetchViewHandles()V

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateThemeColors()V

    return-void
.end method

.method public setDoze()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 328
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mHourOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 329
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteTensDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 330
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mMinuteOnesDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateThemeColor(I)V

    .line 331
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAmPmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mDateDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 335
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mAlarmDisplay:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 337
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setNextAlarmText(Ljava/lang/String;)V
    .locals 1

    .line 273
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mNextAlarmText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 274
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateClockDisplay(Z)V

    return-void
.end method

.method public final startClockTicking()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mIsTicking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mIsTicking:Z

    .line 281
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateDateFormat()V

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->createTime(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->registerTimeEventReceiver()V

    .line 284
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->registerTimeSettingsChangeObserver()V

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->updateTime()V

    return-void
.end method

.method public final stopClockTicking()V
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mIsTicking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->mIsTicking:Z

    .line 293
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->unregisterTimeEventReceiver()V

    .line 294
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->unregisterTimeSettingsChangeObserver()V

    :cond_0
    return-void
.end method
