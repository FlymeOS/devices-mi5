.class Lcom/android/vendorsettings/ig;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/vendorsettings/ig;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 672
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 673
    return-void
.end method
