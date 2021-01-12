.class public Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
.super Ljava/lang/Object;
.source "Rev3SkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SkinGlueRev3"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;->this$0:Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;
        }
    .end annotation

    .line 312
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 313
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x0

    .line 314
    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v0, "android"

    .line 315
    invoke-virtual {p0, v0, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 316
    new-instance p3, Lcom/sonymobile/runtimeskinning/LegacySkinnedResources;

    .line 317
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->access$500()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p3, p2, p1, p0, v0}, Lcom/sonymobile/runtimeskinning/LegacySkinnedResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 319
    new-instance p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    invoke-direct {p1, p0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
