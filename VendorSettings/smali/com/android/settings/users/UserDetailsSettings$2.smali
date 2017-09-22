.class Lcom/android/vendorsettings/users/UserDetailsSettings$2;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic auk:Lcom/android/vendorsettings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/UserDetailsSettings;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/vendorsettings/users/UserDetailsSettings$2;->auk:Lcom/android/vendorsettings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserDetailsSettings$2;->auk:Lcom/android/vendorsettings/users/UserDetailsSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserDetailsSettings;->bj(Z)V

    .line 180
    return-void
.end method
