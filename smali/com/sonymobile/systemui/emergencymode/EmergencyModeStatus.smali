.class public Lcom/sonymobile/systemui/emergencymode/EmergencyModeStatus;
.super Ljava/lang/Object;
.source "EmergencyModeStatus.java"


# direct methods
.method public static isEmergencyModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "somc.emergency_mode"

    .line 19
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
