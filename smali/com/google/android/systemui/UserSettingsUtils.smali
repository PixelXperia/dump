.class public Lcom/google/android/systemui/UserSettingsUtils;
.super Ljava/lang/Object;
.source "UserSettingsUtils.java"


# direct methods
.method public static load(Landroid/content/ContentResolver;)Z
    .locals 3

    .line 21
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "systemui.google.opa_enabled"

    .line 22
    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static save(Landroid/content/ContentResolver;Z)V
    .locals 2

    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "systemui.google.opa_enabled"

    .line 17
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
