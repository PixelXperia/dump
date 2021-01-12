.class Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;
.super Ljava/lang/Object;
.source "Rev6SkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlueFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;,
        Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinGlueRev6;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static sBindServiceAsUser:Ljava/lang/reflect/Method;

.field private static sCurrentUserHandle:Ljava/lang/reflect/Field;

.field private static final sLock:Ljava/lang/Object;

.field private static sMyUserId:Ljava/lang/reflect/Method;

.field private static volatile sServiceConnection:Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 51
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;
    .locals 1

    .line 51
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sServiceConnection:Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;)Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;
    .locals 0

    .line 51
    sput-object p0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sServiceConnection:Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Field;
    .locals 1

    .line 51
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sCurrentUserHandle:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .locals 1

    .line 51
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sBindServiceAsUser:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method protected init()Z
    .locals 8

    .line 134
    sget-object p0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 135
    :try_start_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sMyUserId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    const-class v0, Landroid/os/UserHandle;

    const-string v2, "myUserId"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sMyUserId:Ljava/lang/reflect/Method;

    .line 139
    :cond_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sBindServiceAsUser:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 140
    const-class v0, Landroid/content/Context;

    const-string v3, "bindServiceAsUser"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v1

    const-class v6, Landroid/content/ServiceConnection;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/os/UserHandle;

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sBindServiceAsUser:Ljava/lang/reflect/Method;

    .line 144
    :cond_1
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sCurrentUserHandle:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 145
    const-class v0, Landroid/os/UserHandle;

    const-string v3, "CURRENT"

    const-class v4, Landroid/os/UserHandle;

    invoke-static {v0, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sCurrentUserHandle:Ljava/lang/reflect/Field;

    .line 149
    :cond_2
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sMyUserId:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sBindServiceAsUser:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->sCurrentUserHandle:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 4

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.runtimeskinning.core"

    const-string v3, "com.sonymobile.runtimeskinning.manager.SkinManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-le v1, v3, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 0

    .line 112
    new-instance p0, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinGlueRev6;

    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinGlueRev6;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
