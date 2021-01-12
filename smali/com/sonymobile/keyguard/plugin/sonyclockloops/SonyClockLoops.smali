.class public Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;
.super Landroid/widget/LinearLayout;
.source "SonyClockLoops.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;
    }
.end annotation


# instance fields
.field private mAlarm:Landroid/widget/TextView;

.field private mAmPm:Landroid/widget/TextView;

.field private mClockHour:Landroid/widget/TextView;

.field private mClockMinute:Landroid/widget/TextView;

.field private mClockSeparator:Landroid/widget/TextView;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mIs24HourFormat:Z

.field private final mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

.field private mNextAlarmText:Ljava/lang/String;

.field private mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

.field private mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

.field private final mTimeSettingsChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockView:Landroid/widget/LinearLayout;

    .line 51
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockHour:Landroid/widget/TextView;

    .line 53
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockSeparator:Landroid/widget/TextView;

    .line 55
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockMinute:Landroid/widget/TextView;

    .line 57
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    .line 59
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mDate:Landroid/widget/TextView;

    .line 61
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    .line 63
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mNextAlarmText:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mIs24HourFormat:Z

    .line 69
    const-class p2, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    .line 70
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    .line 85
    new-instance p2, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    .line 97
    new-instance p2, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$2;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$2;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

    .line 82
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->update24HourFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->resizeClock(Z)V

    return-void
.end method

.method private fetchViewHandles()V
    .locals 1

    .line 164
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockView:Landroid/widget/LinearLayout;

    .line 165
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_clock_hour:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockHour:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_clock_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockSeparator:Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_clock_minute:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockMinute:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_ampm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_date:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mDate:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_alarm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    .line 172
    sget v0, Lcom/android/systemui/R$id;->somc_sony_clock_loops_second_hand:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    return-void
.end method

.method private refreshAlarmStatus()V
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mNextAlarmText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->keyguard_accessibility_next_alarm:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mNextAlarmText:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 241
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private refreshAmPmDate(Ljava/util/Calendar;)V
    .locals 4

    .line 214
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mIs24HourFormat:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const-string v0, "a"

    .line 217
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 218
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$integer;->somc_digital_clock_max_ampm_chars:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 223
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-le v3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_1
    sget-object v0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->dateView:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_3
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mDate:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private refreshTime(Ljava/util/Calendar;)V
    .locals 3

    .line 190
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockHourView24:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_0
    sget-object v0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockHourView12:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    :goto_0
    sget-object v1, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockMinuteView:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 196
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mIs24HourFormat:Z

    if-eqz v2, :cond_1

    .line 197
    sget-object v2, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockSeparator24:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockSeparator12:Ljava/lang/String;

    .line 196
    :goto_1
    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 199
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockHour:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockHour:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockMinute:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockMinute:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockSeparator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_4
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockHour:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 209
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockMinute:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 210
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockSeparator:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-void
.end method

.method private registerTimeSettingsChangeObserver()V
    .locals 3

    .line 141
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resizeClock(Z)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sony_clock_loops_sencond_hand_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->sony_clock_loops_style_cover_view_scale:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 115
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 120
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method private unregisterTimeSettingsChangeObserver()V
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private update24HourFormat()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mIs24HourFormat:Z

    return-void
.end method

.method private updateThemeColors()V
    .locals 3

    .line 293
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 294
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockSeparator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 305
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->refresh(Ljava/util/Calendar;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->registerCallback(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->removeCallback(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 153
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->fetchViewHandles()V

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->updateThemeColors()V

    return-void
.end method

.method public refresh(Ljava/util/Calendar;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->update(Landroid/content/Context;)V

    if-nez p1, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->refreshTime(Ljava/util/Calendar;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->refreshAmPmDate(Ljava/util/Calendar;)V

    .line 185
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->refreshAlarmStatus()V

    return-void
.end method

.method public setDoze()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->isStyleCoverViewSelectedAndClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 274
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->resizeClock(Z)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->setDoze()V

    .line 280
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockHour:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockMinute:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mClockSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 287
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mAlarm:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mNextAlarmText:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->refreshAlarmStatus()V

    return-void
.end method

.method public setPicker(Z)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->setPicker(Z)V

    return-void
.end method

.method public startClockTicking()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->update24HourFormat()V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {v0, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->startClockTicking(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;)V

    .line 258
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->registerTimeSettingsChangeObserver()V

    return-void
.end method

.method public stopClockTicking()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->mSecondHand:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->stopClockTicking()V

    .line 264
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->unregisterTimeSettingsChangeObserver()V

    return-void
.end method
