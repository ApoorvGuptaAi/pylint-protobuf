from issue26_pb2 import Motorcycle


def get_motorcycle() -> Motorcycle:
    return Motorcycle()


def something():
    m = get_motorcycle()
    engine = m.engine
    should_warn = m.should_warn
