.class public final enum Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;
.super Ljava/lang/Enum;
.source "LockscreenStatisticsShortcutReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Types"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

.field public static final enum Camera:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

.field public static final enum Phone:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

.field public static final enum VoiceAssist:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    const/4 v1, 0x0

    const-string v2, "Camera"

    invoke-direct {v0, v2, v1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->Camera:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    .line 25
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    const/4 v2, 0x1

    const-string v3, "VoiceAssist"

    invoke-direct {v0, v3, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->VoiceAssist:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    .line 30
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    const/4 v3, 0x2

    const-string v4, "Phone"

    invoke-direct {v0, v4, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->Phone:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    .line 16
    sget-object v4, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->Camera:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->VoiceAssist:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->Phone:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->$VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;
    .locals 1

    .line 16
    const-class v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;
    .locals 1

    .line 16
    sget-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->$VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    invoke-virtual {v0}, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsShortcutReporter$Types;

    return-object v0
.end method
