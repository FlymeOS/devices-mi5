.class Lcom/android/vendorsettings/users/UserSettings$8;
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
    .line 584
    iput-object p1, p0, Lcom/android/vendorsettings/users/UserSettings$8;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings$8;->auA:Lcom/android/vendorsettings/users/UserSettings;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/vendorsettings/users/UserSettings;->e(Lcom/android/vendorsettings/users/UserSettings;I)V

    .line 590
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
