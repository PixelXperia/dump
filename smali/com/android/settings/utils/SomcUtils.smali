.class public Lcom/android/settings/utils/SomcUtils;
.super Ljava/lang/Object;
.source "SomcUtils.java"


# direct methods
.method private static hasPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 19
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 22
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 23
    aget-object v2, v2, v1

    const-string v3, "com.kddi.android.app.permission.STUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isEmbodyOrStubApp(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/android/settings/utils/SomcUtils;->isStubAppEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/android/settings/utils/SomcUtils;->hasPermission(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public static isStubApp(Landroid/content/Context;Landroid/content/pm/PackageInfo;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/android/settings/utils/SomcUtils;->isStubAppEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/android/settings/utils/SomcUtils;->hasPermission(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_1

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isStubAppEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050061

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
