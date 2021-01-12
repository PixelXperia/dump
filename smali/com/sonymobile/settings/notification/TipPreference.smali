.class public Lcom/sonymobile/settings/notification/TipPreference;
.super Landroidx/preference/Preference;
.source "TipPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/notification/TipPreference$OnTipClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sonymobile/settings/notification/TipPreference$OnTipClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d013f

    .line 23
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0469

    .line 34
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/sonymobile/settings/notification/TipPreference;->mListener:Lcom/sonymobile/settings/notification/TipPreference$OnTipClickListener;

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1, p0}, Lcom/sonymobile/settings/notification/TipPreference$OnTipClickListener;->onClick(Lcom/sonymobile/settings/notification/TipPreference;)V

    :cond_0
    return-void
.end method

.method public setOnTipClickListener(Lcom/sonymobile/settings/notification/TipPreference$OnTipClickListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sonymobile/settings/notification/TipPreference;->mListener:Lcom/sonymobile/settings/notification/TipPreference$OnTipClickListener;

    return-void
.end method
