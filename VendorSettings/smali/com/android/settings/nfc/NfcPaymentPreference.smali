.class public Lcom/android/vendorsettings/nfc/NfcPaymentPreference;
.super Landroid/preference/DialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vendorsettings/nfc/PaymentBackend$Callback;


# instance fields
.field private final aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

.field private final ail:Lcom/android/vendorsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

.field private aim:Landroid/widget/ImageView;

.field private final bx:Landroid/view/LayoutInflater;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/vendorsettings/nfc/PaymentBackend;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p2, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    .line 54
    iput-object p1, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->a(Lcom/android/vendorsettings/nfc/PaymentBackend$Callback;)V

    .line 56
    new-instance v0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/vendorsettings/nfc/NfcPaymentPreference;)V

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->ail:Lcom/android/vendorsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    .line 57
    const v0, 0x7f0c0996

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->bx:Landroid/view/LayoutInflater;

    .line 59
    const v0, 0x7f0400f8

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->refresh()V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->bx:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/nfc/NfcPaymentPreference;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/nfc/NfcPaymentPreference;)Lcom/android/vendorsettings/nfc/PaymentBackend;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    return-object v0
.end method


# virtual methods
.method K()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aim:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->rY()Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->aiy:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aim:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 68
    const v0, 0x7f1301c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aim:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aim:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->K()V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->rY()Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->aiy:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v0, v0, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->aiy:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v0, "NfcPaymentPreference"

    const-string v1, "Settings activity not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->ail:Lcom/android/vendorsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    return-void
.end method

.method public rT()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->refresh()V

    .line 103
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->rX()Ljava/util/List;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/vendorsettings/nfc/PaymentBackend;->rY()Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v1

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 82
    iget-object v2, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->ail:Lcom/android/vendorsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->a([Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 84
    :cond_0
    const v0, 0x7f0c0990

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->setTitle(I)V

    .line 85
    if-eqz v1, :cond_1

    .line 86
    iget-object v0, v1, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->K()V

    .line 91
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0991

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
