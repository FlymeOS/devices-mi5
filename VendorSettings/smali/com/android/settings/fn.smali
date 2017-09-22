.class Lcom/android/vendorsettings/fn;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sV:Landroid/content/DialogInterface;

.field final synthetic sW:Lcom/android/vendorsettings/fm;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fm;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/vendorsettings/fn;->sW:Lcom/android/vendorsettings/fm;

    iput-object p2, p0, Lcom/android/vendorsettings/fn;->sV:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 486
    new-instance v0, Lcom/android/vendorsettings/fg;

    iget-object v1, p0, Lcom/android/vendorsettings/fn;->sW:Lcom/android/vendorsettings/fm;

    iget-object v1, v1, Lcom/android/vendorsettings/fm;->sU:Lcom/android/vendorsettings/fh;

    iget-object v2, p0, Lcom/android/vendorsettings/fn;->sW:Lcom/android/vendorsettings/fm;

    iget-object v2, v2, Lcom/android/vendorsettings/fm;->sT:Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/fg;-><init>(Lcom/android/vendorsettings/fh;Landroid/app/Activity;Lcom/android/vendorsettings/ff;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 487
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    iget-object v0, p0, Lcom/android/vendorsettings/fn;->sV:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 489
    return-void
.end method
