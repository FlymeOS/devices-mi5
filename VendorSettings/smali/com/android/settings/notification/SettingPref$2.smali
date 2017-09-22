.class Lcom/android/vendorsettings/notification/SettingPref$2;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Lcom/android/vendorsettings/cO;


# instance fields
.field final synthetic aks:Lcom/android/vendorsettings/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/SettingPref;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/vendorsettings/notification/SettingPref$2;->aks:Lcom/android/vendorsettings/notification/SettingPref;

    iput-object p2, p0, Lcom/android/vendorsettings/notification/SettingPref$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref$2;->aks:Lcom/android/vendorsettings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/SettingPref$2;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/notification/SettingPref;->r(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
