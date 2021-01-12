.class public interface abstract Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockLog;
.super Ljava/lang/Object;
.source "DocomoClockLog.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DocomoLockScreen"

    const/4 v1, 0x2

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockLog;->DEBUG:Z

    return-void
.end method
