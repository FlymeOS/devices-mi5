.class Lcom/android/vendorsettings/ie;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

.field final synthetic Bs:Lcom/android/vendorsettings/ip;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/ip;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/vendorsettings/ie;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/ie;->Bs:Lcom/android/vendorsettings/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/ie;->Br:Lcom/android/vendorsettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/ie;->Bs:Lcom/android/vendorsettings/ip;

    invoke-virtual {v1, p3}, Lcom/android/vendorsettings/ip;->ak(I)Lcom/android/vendorsettings/io;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/TrustedCredentialsSettings;->a(Lcom/android/vendorsettings/TrustedCredentialsSettings;Lcom/android/vendorsettings/io;)V

    .line 245
    return-void
.end method
