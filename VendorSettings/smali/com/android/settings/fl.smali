.class Lcom/android/vendorsettings/fl;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sT:Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/vendorsettings/fl;->sT:Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 468
    return-void
.end method
