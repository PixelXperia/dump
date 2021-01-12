.class Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;
.super Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;
.source "Rev5aSkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public isApplicable(Landroid/content/Context;)Z
    .locals 4

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.runtimeskinning.core"

    const-string v3, "com.sonymobile.runtimeskinning.manager.SkinManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public bridge synthetic produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinGlueRev5;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;

    move-result-object p0

    return-object p0
.end method

.method public produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;
    .locals 1

    .line 37
    new-instance p0, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;-><init>(Landroid/content/Context;Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$1;)V

    return-object p0
.end method

.method public bridge synthetic produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;

    move-result-object p0

    return-object p0
.end method
