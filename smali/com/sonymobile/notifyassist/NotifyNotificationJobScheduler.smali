.class public Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;
.super Landroid/app/job/JobService;
.source "NotifyNotificationJobScheduler.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotifyNotificationJobScheduler"

    const/4 v1, 0x3

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private getLatencyTime()Ljava/lang/Long;
    .locals 3

    .line 70
    invoke-static {}, Lcom/sonymobile/notifyassist/common/debugmode/DebugModeUtils;->getLatencyTimeForDebug()J

    move-result-wide v0

    .line 71
    sget-boolean p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job scheduler Latency is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NotifyNotificationJobScheduler"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private setOldTimePassIfNeed(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isOldTimePass(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setOldTimePass(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 48
    sget-boolean p1, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "NotifyNotificationJobScheduler"

    const-string v0, "onStartJob()"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;

    invoke-direct {v0, p0, p0}, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;-><init>(Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 60
    invoke-direct {p0, p0}, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->setOldTimePassIfNeed(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public scheduleNotifyNotification(Landroid/content/Context;)V
    .locals 5

    const-string v0, "jobscheduler"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    const-string v3, "NotifyNotificationJobScheduler"

    if-nez v2, :cond_1

    .line 29
    sget-boolean v2, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Job scheduled by NOTIFY_NOTIFICATION_JOB_ID"

    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 34
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 35
    invoke-direct {p0}, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->getLatencyTime()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_0

    .line 39
    :cond_1
    sget-boolean p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Already exist id, can not used it :1"

    .line 40
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
