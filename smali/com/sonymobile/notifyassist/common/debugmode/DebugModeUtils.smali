.class public Lcom/sonymobile/notifyassist/common/debugmode/DebugModeUtils;
.super Ljava/lang/Object;
.source "DebugModeUtils.java"


# direct methods
.method public static getLatencyTimeForDebug()J
    .locals 4

    .line 23
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4ec0

    const-string v1, "persist.debug.notify.short_latency_time"

    .line 24
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method
