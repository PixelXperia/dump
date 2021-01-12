.class Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.super Ljava/lang/Object;
.source "Rev3SkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlueFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    }
.end annotation


# static fields
.field private static sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

.field private static sFieldIsSkin:Ljava/lang/reflect/Field;

.field private static sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

.field private static sGetCookieName:Ljava/lang/reflect/Method;

.field private static sGetPackageManager:Ljava/lang/reflect/Method;

.field protected static final sLock:Ljava/lang/Object;

.field private static sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

.field private static sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

.field private static sMyUserId:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .locals 1

    .line 39
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sGetCookieName:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method protected init()Z
    .locals 7

    .line 126
    sget-object p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 127
    :try_start_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsSkin:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 128
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "isSkin"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsSkin:Ljava/lang/reflect/Field;

    .line 130
    :cond_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 131
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "isVerifiedSkin"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    .line 134
    :cond_1
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 135
    const-class v0, Landroid/content/pm/ActivityInfo;

    const-string v1, "CONFIG_SKIN_PACKAGE"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    .line 138
    :cond_2
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "android.content.pm.IPackageManager"

    const-string v3, "getRuntimeSkin"

    .line 139
    const-class v4, Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    .line 142
    :cond_3
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    const-string v0, "android.content.pm.IPackageManager"

    const-string v3, "setRuntimeSkin"

    .line 143
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v0, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    .line 146
    :cond_4
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sGetPackageManager:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    const-string v0, "android.app.AppGlobals"

    const-string v3, "getPackageManager"

    .line 147
    const-class v4, Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v0, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sGetPackageManager:Ljava/lang/reflect/Method;

    .line 150
    :cond_5
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMyUserId:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    const-string v0, "android.os.UserHandle"

    const-string v3, "myUserId"

    .line 151
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v0, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMyUserId:Ljava/lang/reflect/Method;

    .line 153
    :cond_6
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sGetCookieName:Ljava/lang/reflect/Method;

    if-nez v0, :cond_7

    .line 154
    const-class v0, Landroid/content/res/AssetManager;

    const-string v3, "getCookieName"

    const-class v4, Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sGetCookieName:Ljava/lang/reflect/Method;

    .line 158
    :cond_7
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsSkin:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sGetPackageManager:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sMyUserId:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sGetCookieName:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    .line 117
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    .locals 0

    .line 109
    new-instance p1, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

    invoke-direct {p1, p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;-><init>(Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;)V

    return-object p1
.end method

.method public bridge synthetic produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;

    move-result-object p0

    return-object p0
.end method
