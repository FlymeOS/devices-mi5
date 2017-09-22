.class Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;
.super Ljava/lang/Object;
.source "PermissionInfoFragment.java"


# instance fields
.field private KD:Ljava/util/Map;

.field private KE:Ljava/util/Map;

.field private KF:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KD:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KE:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KF:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KD:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KF:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public kR()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KD:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public kS()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public kT()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->KF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
