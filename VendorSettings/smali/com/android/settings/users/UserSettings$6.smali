.class Lcom/android/settings/users/UserSettings$6;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic auA:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$6;->auA:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$6;->auA:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$6;->auA:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->f(Lcom/android/settings/users/UserSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->d(Lcom/android/settings/users/UserSettings;I)V

    .line 548
    return-void
.end method
