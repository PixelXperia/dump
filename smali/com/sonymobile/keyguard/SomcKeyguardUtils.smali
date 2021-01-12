.class public final Lcom/sonymobile/keyguard/SomcKeyguardUtils;
.super Ljava/lang/Object;
.source "SomcKeyguardUtils.java"


# direct methods
.method public static limitButtonTextSize(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->somc_kg_status_line_font_max_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$bool;->somc_keyguard_shown_on_phone:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 33
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 34
    invoke-virtual {p1, p0, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method
