.class public Lcom/android/settings/users/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field public static final auc:[Ljava/lang/String;

.field public static final aud:[I

.field public static final aue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "no_share_location"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->auc:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [I

    const v1, 0x7f0c09e4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->aud:[I

    .line 47
    new-array v0, v3, [I

    const v1, 0x7f0c09e5

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->aue:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 81
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v4

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 84
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v6, "no_share_location"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v0, v1, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 84
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v3, v4, p2}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 92
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v6

    move v0, v1

    .line 65
    :goto_0
    sget-object v2, Lcom/android/settings/users/RestrictionUtils;->auc:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 66
    new-instance v7, Landroid/content/RestrictionEntry;

    sget-object v2, Lcom/android/settings/users/RestrictionUtils;->auc:[Ljava/lang/String;

    aget-object v8, v2, v0

    sget-object v2, Lcom/android/settings/users/RestrictionUtils;->auc:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    invoke-direct {v7, v8, v2}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    .line 69
    sget-object v2, Lcom/android/settings/users/RestrictionUtils;->aud:[I

    aget v2, v2, v0

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 70
    sget-object v2, Lcom/android/settings/users/RestrictionUtils;->aue:[I

    aget v2, v2, v0

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v7, v3}, Landroid/content/RestrictionEntry;->setType(I)V

    .line 72
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 66
    goto :goto_1

    .line 75
    :cond_1
    return-object v5
.end method
