.class Lcom/sonymobile/runtimeskinning/SkinnedResourcesUtil;
.super Ljava/lang/Object;
.source "SkinnedResourcesUtil.java"


# direct methods
.method private static createOverlayResources(Ljava/lang/String;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Landroid/content/res/Configuration;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    .line 177
    :try_start_0
    new-instance v0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 178
    invoke-static {}, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 179
    invoke-static {v1, p0, v0}, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/sonymobile/runtimeskinning/ExceptionHandler;)I

    move-result v2

    .line 180
    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    if-lez v2, :cond_0

    .line 182
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 183
    invoke-static {v0, v2}, Lcom/sonymobile/runtimeskinning/OverlayExtractor;->getPackageName(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create overlay resources of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "runtime-skinning-lib"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createSkinnedResources(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonymobile/runtimeskinning/SkinnedResources;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 123
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 123
    invoke-static {v0, v1, p0}, Lcom/sonymobile/runtimeskinning/SkinnedResourcesUtil;->createOverlayResources(Ljava/lang/String;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 131
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 142
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 143
    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/SkinnedResourcesUtil;->createOverlayResources(Ljava/lang/String;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_2
    :try_start_1
    invoke-static {p0, p2}, Lcom/sonymobile/runtimeskinning/OverlayExtractor;->getResourcesAllowedToOverlay(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p3, "runtime-skinning-lib"

    const-string v2, "Failed to parse which resources are allowed to overlay"

    .line 155
    invoke-static {p3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_3
    :goto_1
    new-instance p1, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, p2, p0, v1, v0}, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/util/List;Ljava/util/Map;)V

    return-object p1

    .line 127
    :cond_4
    :try_start_2
    new-instance p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create resources for target "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 133
    new-instance p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    invoke-direct {p1, p0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getSkinnedResources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/sonymobile/runtimeskinning/SkinnedResources;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;
        }
    .end annotation

    .line 77
    :try_start_0
    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 79
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    invoke-static {p5, p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/OverlayExtractor;->getSkinOverlayPaths(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 97
    :goto_0
    invoke-static {p5, p0, v2, p4}, Lcom/sonymobile/runtimeskinning/SkinnedResourcesUtil;->createSkinnedResources(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Lcom/sonymobile/runtimeskinning/SkinnedResources;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 94
    new-instance p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    invoke-direct {p1, p0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
