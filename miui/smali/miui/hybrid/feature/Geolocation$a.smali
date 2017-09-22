.class Lmiui/hybrid/feature/Geolocation$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hybrid/feature/Geolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic yZ:Lmiui/hybrid/feature/Geolocation;


# direct methods
.method private constructor <init>(Lmiui/hybrid/feature/Geolocation;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lmiui/hybrid/feature/Geolocation$a;->yZ:Lmiui/hybrid/feature/Geolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation$a;-><init>(Lmiui/hybrid/feature/Geolocation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$a;->yZ:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->a(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$a;->yZ:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->a(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    iget-object v1, p0, Lmiui/hybrid/feature/Geolocation$a;->yZ:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v1, p1}, Lmiui/hybrid/feature/Geolocation;->a(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
