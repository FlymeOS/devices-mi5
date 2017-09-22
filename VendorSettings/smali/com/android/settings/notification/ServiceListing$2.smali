.class Lcom/android/settings/notification/ServiceListing$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceListing.java"


# instance fields
.field final synthetic akm:Lcom/android/settings/notification/ServiceListing;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ServiceListing;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/notification/ServiceListing$2;->akm:Lcom/android/settings/notification/ServiceListing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing$2;->akm:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->sy()Ljava/util/List;

    .line 200
    return-void
.end method
