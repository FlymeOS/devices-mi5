.class final Lcom/android/vendorsettings/applications/AppPermissions$PermissionGroup;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# instance fields
.field private final Gi:Landroid/util/ArrayMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppPermissions$PermissionGroup;->Gi:Landroid/util/ArrayMap;

    return-void
.end method
