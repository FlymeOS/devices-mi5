.class Lcom/android/vendorsettings/users/UserDetailsSettings$1;
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
    .line 170
    iput-object p1, p0, Lcom/android/vendorsettings/users/UserDetailsSettings$1;->auk:Lcom/android/vendorsettings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserDetailsSettings$1;->auk:Lcom/android/vendorsettings/users/UserDetailsSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/users/UserDetailsSettings;->removeUser()V

    .line 173
    return-void
.end method
