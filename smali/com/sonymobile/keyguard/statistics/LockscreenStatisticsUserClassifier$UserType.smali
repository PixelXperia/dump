.class public final enum Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;
.super Ljava/lang/Enum;
.source "LockscreenStatisticsUserClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

.field public static final enum AdminUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

.field public static final enum GuestUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

.field public static final enum Owner:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

.field public static final enum PrimaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

.field public static final enum RestrictedUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

.field public static final enum SecondaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

.field public static final enum Unknown:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;


# instance fields
.field public final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v1, 0x0

    const-string v2, "Owner"

    invoke-direct {v0, v2, v1, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->Owner:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    .line 27
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v2, 0x1

    const-string v3, "GuestUser"

    const-string v4, "Guest-User"

    invoke-direct {v0, v3, v2, v4}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->GuestUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    .line 33
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v3, 0x2

    const-string v4, "RestrictedUser"

    const-string v5, "Restricted-User"

    invoke-direct {v0, v4, v3, v5}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->RestrictedUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    .line 39
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v4, 0x3

    const-string v5, "SecondaryUser"

    const-string v6, "Secondary-User"

    invoke-direct {v0, v5, v4, v6}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->SecondaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    .line 44
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v5, 0x4

    const-string v6, "PrimaryUser"

    const-string v7, "Primary-User"

    invoke-direct {v0, v6, v5, v7}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->PrimaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    .line 50
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v6, 0x5

    const-string v7, "AdminUser"

    const-string v8, "Admin-User"

    invoke-direct {v0, v7, v6, v8}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->AdminUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    .line 57
    new-instance v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v7, 0x6

    const-string v8, "Unknown"

    invoke-direct {v0, v8, v7, v8}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->Unknown:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    .line 16
    sget-object v8, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->Owner:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->GuestUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->RestrictedUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->SecondaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->PrimaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->AdminUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->Unknown:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->$VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;
    .locals 1

    .line 16
    const-class v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;
    .locals 1

    .line 16
    sget-object v0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->$VALUES:[Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    invoke-virtual {v0}, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    return-object v0
.end method
