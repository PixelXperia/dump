.class public final enum Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;
.super Ljava/lang/Enum;
.source "LockscreenStatisticsFingerprintLockOutReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockOutTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

.field public static final enum lockout_five:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

.field public static final enum lockout_timeout:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

.field public static final enum lockout_twenty:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    const/4 v1, 0x0

    const-string v2, "lockout_five"

    invoke-direct {v0, v2, v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->lockout_five:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    .line 28
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    const/4 v2, 0x1

    const-string v3, "lockout_twenty"

    invoke-direct {v0, v3, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->lockout_twenty:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    .line 34
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    const/4 v3, 0x2

    const-string v4, "lockout_timeout"

    invoke-direct {v0, v4, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->lockout_timeout:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    .line 18
    sget-object v4, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->lockout_five:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->lockout_twenty:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->lockout_timeout:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->$VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;
    .locals 1

    .line 18
    const-class v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->$VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;

    return-object v0
.end method
