.class public interface abstract Lcom/fingerprints/service/INavigator;
.super Ljava/lang/Object;
.source "INavigator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/INavigator$Stub;
    }
.end annotation


# virtual methods
.method public abstract setNavigationEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
