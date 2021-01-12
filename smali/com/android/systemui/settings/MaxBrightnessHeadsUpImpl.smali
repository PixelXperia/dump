.class public Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;
.super Ljava/lang/Object;
.source "MaxBrightnessHeadsUpImpl.java"

# interfaces
.implements Lcom/android/systemui/settings/MaxBrightnessHeadsUp;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/systemui/settings/MaxBrightnessHeadsUp$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dispatchUserResponded()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->mListener:Lcom/android/systemui/settings/MaxBrightnessHeadsUp$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUp$Listener;->onUserResponded()V

    :cond_0
    return-void
.end method

.method private startSettingsActivity()V
    .locals 2

    .line 67
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.intent.action.ADAPTIVE_BRIGHTNESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$show$0$MaxBrightnessHeadsUpImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->dispatchUserResponded()V

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->startSettingsActivity()V

    return-void
.end method

.method public synthetic lambda$show$1$MaxBrightnessHeadsUpImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->dispatchUserResponded()V

    return-void
.end method

.method public synthetic lambda$showWithGameEnhancer$2$MaxBrightnessHeadsUpImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->dispatchUserResponded()V

    return-void
.end method

.method public setOnUserRespondedListener(Lcom/android/systemui/settings/MaxBrightnessHeadsUp$Listener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->mListener:Lcom/android/systemui/settings/MaxBrightnessHeadsUp$Listener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 36
    sget v1, Lcom/android/systemui/R$string;->oled_max_brightness_dialog_title_txt:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 37
    sget v1, Lcom/android/systemui/R$string;->oled_max_brightness_dialog_body_txt:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 38
    sget v1, Lcom/android/systemui/R$string;->oled_max_brightness_dialog_yes_button_txt:I

    new-instance v2, Lcom/android/systemui/settings/-$$Lambda$MaxBrightnessHeadsUpImpl$dIfhRidfEkl-16ELG-sy7_hXrmM;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/-$$Lambda$MaxBrightnessHeadsUpImpl$dIfhRidfEkl-16ELG-sy7_hXrmM;-><init>(Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 43
    sget v1, Lcom/android/systemui/R$string;->oled_max_brightness_dialog_no_button_txt:I

    new-instance v2, Lcom/android/systemui/settings/-$$Lambda$MaxBrightnessHeadsUpImpl$JVKNg00U0S32RAJAFOEYf7qlbyw;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/-$$Lambda$MaxBrightnessHeadsUpImpl$JVKNg00U0S32RAJAFOEYf7qlbyw;-><init>(Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showWithGameEnhancer()V
    .locals 3

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 53
    sget v1, Lcom/android/systemui/R$string;->oled_max_brightness_game_dialog_title_txt:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 54
    sget v1, Lcom/android/systemui/R$string;->oled_max_brightness_game_dialog_body_txt:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 55
    sget v1, Lcom/android/systemui/R$string;->oled_max_brightness_game_dialog_got_it_button_txt:I

    new-instance v2, Lcom/android/systemui/settings/-$$Lambda$MaxBrightnessHeadsUpImpl$FUXAW48HufRLQqgmYVe-UXITKC0;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/-$$Lambda$MaxBrightnessHeadsUpImpl$FUXAW48HufRLQqgmYVe-UXITKC0;-><init>(Lcom/android/systemui/settings/MaxBrightnessHeadsUpImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
