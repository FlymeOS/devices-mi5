.class Lcom/android/settings/notification/ManagedServiceSettings$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aiM:Lcom/android/settings/notification/ManagedServiceSettings;

.field final synthetic aiN:Landroid/content/ComponentName;

.field final synthetic aiO:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->aiM:Lcom/android/settings/notification/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->aiN:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->aiO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 118
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->aiM:Lcom/android/settings/notification/ManagedServiceSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->aiN:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->aiO:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
