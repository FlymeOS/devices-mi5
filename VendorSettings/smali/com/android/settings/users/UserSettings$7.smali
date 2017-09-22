.class Lcom/android/vendorsettings/users/UserSettings$7;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic auA:Lcom/android/vendorsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/vendorsettings/users/UserSettings$7;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings$7;->auA:Lcom/android/vendorsettings/users/UserSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings$7;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/users/UserSettings;->f(Lcom/android/vendorsettings/users/UserSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/users/UserSettings;->d(Lcom/android/vendorsettings/users/UserSettings;I)V

    .line 561
    return-void
.end method
