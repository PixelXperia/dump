.class public Lcom/sonymobile/settings/idd/IddUpdater;
.super Ljava/lang/Object;
.source "IddUpdater.java"


# direct methods
.method public static uploadIdd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/sonymobile/settings/idd/IddPayload;

    invoke-direct {v0}, Lcom/sonymobile/settings/idd/IddPayload;-><init>()V

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/settings/idd/IddPayload;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/sonymobile/settings/idd/IddPayload;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonymobile/settings/idd/IddUpdater;->uploadIdd(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static uploadIdd(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "com.android.providers.settings"

    .line 25
    invoke-static {p0, v0}, Lcom/sonymobile/settings/idd/IddUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {p0, v0}, Lcom/sonymobile/settings/idd/IddUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 27
    invoke-static {v1, p0}, Lcom/sonymobile/settings/idd/IddUtils;->isVersionValid(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {v0, v1, p0, p1}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
