.class Lcom/android/vendorsettings/ii;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Bw:Lcom/android/vendorsettings/ih;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ih;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/vendorsettings/ii;->Bw:Lcom/android/vendorsettings/ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 694
    new-instance v0, Lcom/android/vendorsettings/in;

    iget-object v1, p0, Lcom/android/vendorsettings/ii;->Bw:Lcom/android/vendorsettings/ih;

    iget-object v1, v1, Lcom/android/vendorsettings/ih;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/vendorsettings/ii;->Bw:Lcom/android/vendorsettings/ih;

    iget-object v2, v2, Lcom/android/vendorsettings/ih;->Bu:Lcom/android/vendorsettings/io;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/in;-><init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/io;Lcom/android/vendorsettings/id;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/in;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 696
    iget-object v0, p0, Lcom/android/vendorsettings/ii;->Bw:Lcom/android/vendorsettings/ih;

    iget-object v0, v0, Lcom/android/vendorsettings/ih;->Bv:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 697
    return-void
.end method
