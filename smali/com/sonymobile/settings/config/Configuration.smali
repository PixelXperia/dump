.class public final Lcom/sonymobile/settings/config/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Configuration"

.field private static sSelf:Lcom/sonymobile/settings/config/Configuration;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsDocomoBrand:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sonymobile/settings/config/Configuration;->mIsDocomoBrand:Ljava/lang/Boolean;

    .line 50
    iput-object p1, p0, Lcom/sonymobile/settings/config/Configuration;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonymobile/settings/config/Configuration;
    .locals 2

    const-class v0, Lcom/sonymobile/settings/config/Configuration;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/sonymobile/settings/config/Configuration;->sSelf:Lcom/sonymobile/settings/config/Configuration;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 41
    :goto_0
    new-instance v1, Lcom/sonymobile/settings/config/Configuration;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/config/Configuration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonymobile/settings/config/Configuration;->sSelf:Lcom/sonymobile/settings/config/Configuration;

    goto :goto_1

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_2
    :goto_1
    sget-object p0, Lcom/sonymobile/settings/config/Configuration;->sSelf:Lcom/sonymobile/settings/config/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSwVariant()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.semc.version.sw_variant"

    const-string v0, ""

    .line 72
    invoke-static {p0, v0}, Lcom/sonymobile/settings/config/Configuration;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 59
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "get"

    .line 60
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    .line 63
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    sget-object v0, Lcom/sonymobile/settings/config/Configuration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperties exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public isDocomoBrand()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sonymobile/settings/config/Configuration;->mIsDocomoBrand:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/sonymobile/settings/config/Configuration;->getSwVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "docomo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/config/Configuration;->mIsDocomoBrand:Ljava/lang/Boolean;

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/settings/config/Configuration;->mIsDocomoBrand:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
