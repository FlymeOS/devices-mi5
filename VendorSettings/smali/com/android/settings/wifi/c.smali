.class public Lcom/android/vendorsettings/wifi/c;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"


# instance fields
.field private final azU:Landroid/util/SparseArray;

.field private final i:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/c;->azU:Landroid/util/SparseArray;

    .line 248
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/c;->i:Landroid/content/pm/PackageManager;

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/c;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/c;->dy(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private dy(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/c;->azU:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 253
    if-gez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/c;->i:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/c;->azU:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/c;->azU:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
