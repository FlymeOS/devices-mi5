.class Lcom/android/vendorsettings/fingerprint/A;
.super Landroid/os/Handler;
.source "FingerprintSettings.java"


# instance fields
.field final synthetic acr:Lcom/android/vendorsettings/fingerprint/x;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/x;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/A;->acr:Lcom/android/vendorsettings/fingerprint/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    return-void

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/A;->acr:Lcom/android/vendorsettings/fingerprint/x;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fingerprint/x;->cb(I)V

    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/A;->acr:Lcom/android/vendorsettings/fingerprint/x;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/x;->b(Lcom/android/vendorsettings/fingerprint/x;)V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/A;->acr:Lcom/android/vendorsettings/fingerprint/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/fingerprint/x;->a(Lcom/android/vendorsettings/fingerprint/x;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 187
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/A;->acr:Lcom/android/vendorsettings/fingerprint/x;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/vendorsettings/fingerprint/x;->a(Lcom/android/vendorsettings/fingerprint/x;I)V

    .line 188
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/A;->acr:Lcom/android/vendorsettings/fingerprint/x;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/x;->c(Lcom/android/vendorsettings/fingerprint/x;)V

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/A;->acr:Lcom/android/vendorsettings/fingerprint/x;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Lcom/android/vendorsettings/fingerprint/x;->c(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
