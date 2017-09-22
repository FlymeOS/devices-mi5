.class public final Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private aiA:Landroid/content/ComponentName;

.field private aiz:Lcom/android/vendorsettings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    const-string v0, "PaymentDefaultDialog"

    const-string v1, "Component or category are null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 129
    :goto_0
    return v0

    .line 76
    :cond_1
    const-string v0, "payment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const-string v0, "PaymentDefaultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t support defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 78
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->aiz:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->rX()Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 87
    iget-object v6, v0, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v0

    .line 90
    :cond_3
    iget-boolean v6, v0, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v6, :cond_8

    :goto_2
    move-object v1, v0

    .line 93
    goto :goto_1

    .line 95
    :cond_4
    if-nez v2, :cond_5

    .line 96
    const-string v0, "PaymentDefaultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a registered payment service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 97
    goto :goto_0

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->aiz:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->sb()Landroid/content/ComponentName;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    const-string v0, "PaymentDefaultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 104
    goto/16 :goto_0

    .line 107
    :cond_6
    iput-object p1, p0, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->aiA:Landroid/content/ComponentName;

    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    const v5, 0x7f0c099b

    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    if-nez v1, :cond_7

    .line 112
    const v1, 0x7f0c099c

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    new-array v5, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->bg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 123
    :goto_3
    const v1, 0x7f0c00d2

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 124
    const v1, 0x7f0c00d3

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->setupAlert()V

    move v0, v4

    .line 129
    goto/16 :goto_0

    .line 117
    :cond_7
    const v5, 0x7f0c099d

    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 118
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->bg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    iget-object v1, v1, Lcom/android/vendorsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->bg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private bg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x28

    const/16 v2, 0x20

    .line 133
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->aiz:Lcom/android/vendorsettings/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->aiA:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/nfc/PaymentBackend;->e(Landroid/content/ComponentName;)V

    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->aiz:Lcom/android/vendorsettings/nfc/PaymentBackend;

    .line 46
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 47
    const-string v0, "component"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 49
    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->setResult(I)V

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->a(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentDefaultDialog;->finish()V

    .line 56
    :cond_0
    return-void
.end method
