.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;
.super Ljava/lang/Object;
.source "LockscreenStatisticsReportTimeChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG_REPORT_INTERVAL_MS:J

.field private static final INTERNAL_REPORT_INTERVAL_MS:J

.field private static final REPORT_INTERVAL_MS:J

.field private static final REPORT_WEEKLY_INTERVAL_MS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

.field private final mLockscreenStatisticsHelper:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;

.field private final mLockscreenStatisticsPreference:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->DEBUG_REPORT_INTERVAL_MS:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->REPORT_WEEKLY_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/time/Clock;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    .line 87
    iput-object p3, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mLockscreenStatisticsPreference:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;

    .line 88
    iput-object p4, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mLockscreenStatisticsHelper:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;

    return-void
.end method

.method private checkTime()Z
    .locals 14

    .line 113
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mLockscreenStatisticsPreference:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;

    iget-object v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;->getNextReportTime(Landroid/content/Context;J)J

    move-result-wide v0

    .line 114
    iget-object v4, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v4}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    long-to-double v6, v0

    long-to-double v8, v4

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    cmpl-double v2, v6, v8

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    move v3, v0

    :cond_1
    if-eqz v3, :cond_3

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->setNextReportTime()V

    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->setNextReportTime()V

    :cond_3
    :goto_1
    return v3
.end method

.method private checkTimeWeekly()Z
    .locals 14

    .line 187
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mLockscreenStatisticsPreference:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;

    iget-object v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;->getNextReportTimeWeekly(Landroid/content/Context;J)J

    move-result-wide v0

    .line 189
    iget-object v4, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v4}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    long-to-double v6, v0

    long-to-double v8, v4

    .line 193
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->getReportTimeIntervalWeekly()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    cmpl-double v2, v6, v8

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    move v3, v0

    :cond_1
    if-eqz v3, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->setNextReportTimeWeekly()V

    goto :goto_1

    .line 194
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->setNextReportTimeWeekly()V

    :cond_3
    :goto_1
    return v3
.end method

.method private getReportTimeInterval()J
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->isEngOrUserdebugVariant()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 139
    sget-wide v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    return-wide v0

    .line 141
    :cond_0
    sget-wide v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    return-wide v0
.end method

.method private getReportTimeIntervalWeekly()J
    .locals 2

    .line 215
    sget-wide v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->REPORT_WEEKLY_INTERVAL_MS:J

    return-wide v0
.end method

.method private isEngOrUserdebugVariant()Z
    .locals 1

    .line 178
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "userdebug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private report()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mLockscreenStatisticsHelper:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;

    if-eqz v0, :cond_1

    .line 150
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getReporters(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;->sendIddReport()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportWeekly()V
    .locals 1

    .line 223
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mContext:Landroid/content/Context;

    .line 224
    invoke-static {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsHelper;->getReportersWeekly(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;->sendIddReport()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setNextReportTime()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 167
    iget-object v2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mLockscreenStatisticsPreference:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0, v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;->setNextReportTime(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->checkTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->report()V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->checkTimeWeekly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->reportWeekly()V

    :cond_1
    return-void
.end method

.method public setNextReportTimeWeekly()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->getReportTimeIntervalWeekly()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 239
    iget-object v2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mLockscreenStatisticsPreference:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0, v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;->setNextReportTimeWeekly(Landroid/content/Context;J)V

    return-void
.end method
