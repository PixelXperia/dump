.class public Lcom/android/systemui/statusbar/phone/GameButton;
.super Lcom/android/systemui/statusbar/phone/ContextualButton;
.source "GameButton.java"


# instance fields
.field private mDarkColor:I

.field private mDrawablePackage:Ljava/lang/String;

.field private mDrawableResId:I

.field private mLightColor:I

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    .line 34
    sget v0, Lcom/android/systemui/R$drawable;->android:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 35
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mUpdater:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 10

    .line 41
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDrawableResId:I

    if-lez v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDrawablePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDrawableResId:I

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 47
    :goto_0
    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mLightColor:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDarkColor:I

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 51
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading icon from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDrawablePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameButton"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public setDrawable(Ljava/lang/String;IIIZ)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDrawablePackage:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDrawableResId:I

    .line 63
    iput p3, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mLightColor:I

    .line 64
    iput p4, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDarkColor:I

    if-nez p5, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 67
    sget p2, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p2

    .line 68
    sget p3, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p3

    .line 69
    new-instance p4, Landroid/view/ContextThemeWrapper;

    invoke-direct {p4, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 70
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 71
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p4, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mLightColor:I

    .line 72
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p3, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDarkColor:I

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mDrawablePackage:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->show()Z

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->hide()Z

    .line 81
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/GameButton;->mUpdater:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
