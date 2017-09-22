.class Lcom/android/settings/notification/ServiceListing$1;
.super Landroid/database/ContentObserver;
.source "ServiceListing.java"


# instance fields
.field final synthetic akm:Lcom/android/settings/notification/ServiceListing;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ServiceListing;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/notification/ServiceListing$1;->akm:Lcom/android/settings/notification/ServiceListing;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing$1;->akm:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->sy()Ljava/util/List;

    .line 193
    return-void
.end method
