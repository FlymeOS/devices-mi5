.class Lcom/android/vendorsettings/gJ;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/vendorsettings/gJ;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/vendorsettings/gJ;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->r(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1223
    iget-object v0, p0, Lcom/android/vendorsettings/gJ;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->o(Lcom/android/vendorsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/gJ;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/vendorsettings/RadioInfo;->q(Lcom/android/vendorsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/gJ;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/vendorsettings/RadioInfo;->P(Lcom/android/vendorsettings/RadioInfo;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1225
    return-void
.end method
