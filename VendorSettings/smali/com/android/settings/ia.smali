.class public final Lcom/android/settings/ia;
.super Ljava/lang/Object;
.source "TrustAgentSettings.java"


# instance fields
.field Bl:Landroid/preference/SwitchPreference;

.field component:Landroid/content/ComponentName;

.field public icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 57
    instance-of v0, p1, Lcom/android/settings/ia;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/settings/ia;

    iget-object v1, p1, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
